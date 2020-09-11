import '../../../../../styles/pages/main/url-info/style.scss'
import * as ReactDOM from 'react-dom';
import React from 'react';
import { UrlServer } from '../../../../server/UrlServer';

type Props = {
  urlInfo: any
};
type State = {
  info: any,
  url: string
};

class InfoBar extends React.Component<Props, State>{
  constructor(props: Props){
    super(props);

    let state = {
      info: '',
      url: ''
    };
    if(props.urlInfo){
        state.url = urlInfo.url;
        state.info = urlInfo;
    }

    this.state = state;
  }

  searchInfo(){
    if(this.state.url.length<3) return;

    new UrlServer()
      .getUrlInfo(this.state.url)
      .then(info => {
        this.setState({info});
      })
      .catch(() => {
        this.setState({info: 'Current url wasnt found. Minify it, please, to see info'});
      });
  }

  render(){
    return (<>
      <div className='container'>
        <div className="row">
          <input
            className='col-12 col-md-10'
            value={this.state.url}
            type="text"
            onChange={e => {
              this.setState({url: e.currentTarget.value});
            }}
          />
          <button
            type='submit'
            className="col-12 col-md-2 btn btn-warning"
            onClick={() => this.searchInfo()}
          >Get Info</button>
        </div>
      </div><br/>
      <pre><code>{
        typeof this.state.info == 'string'
        ? this.state.info
        : JSON.stringify(this.state.info)
      }</code></pre><br/>
      {this.state.info && +this.state.info.minCode > -1 && <p>
        You can copy redirect url: back/url/{this.state.info.minCode}
      </p>}
    </>)
  }
}

const urlInfoStr = document.body.dataset.urlInfo;
const urlInfo = urlInfoStr ? JSON.parse(atob(document.body.dataset.urlInfo)) : false;
ReactDOM.render((<InfoBar urlInfo={urlInfo}/>), document.getElementById('app'));

console.log(urlInfo);
