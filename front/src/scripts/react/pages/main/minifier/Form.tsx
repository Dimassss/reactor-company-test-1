import * as React from 'react';
import { UrlServer } from '../../../../server/UrlServer';

type Props = {};
type State = {
  url: string,
  date: string,
  urlExists: boolean,
  minCode: number
};

export class Form extends React.Component<Props, State>{
  constructor(props: Props){
    super(props);

    this.state={
      url: '',
      date: new Date().toISOString().split('T')[0],
      urlExists: false,
      minCode: -1
    }
  }

  onSubmitHandler(){
    new UrlServer().minifyUrl({
      url: this.state.url,
      date: this.state.date
    })
    .then((minCode: number) => {
      window.location.href = '/info/'+minCode;
    }).catch(err => {
      console.log(err);
      alert('Your url want created due to the server error')
    });
  }

  onUrlChangeHandler(url: string){
    this.setState({url});
    new UrlServer().getUrlInfo(url).then((info: any) => {
      let newState = JSON.parse(JSON.stringify(this.state));
      newState.urlExists = info.urlExists;
      newState.minCode = info.minCode;

      this.setState(newState);
    });
  }

  canSend(): boolean{
    return (
      this.state.urlExists &&
      !(this.state.minCode > -1) &&
      this.state.date !== ''
    );
  }

  render(){
    const curDate = new Date().toISOString().split('T')[0];

    return (<form onSubmit={e => {
      e.preventDefault();
      if(!this.canSend()) return;
      this.onSubmitHandler();
    }}>
       <div className="form-group row">
        <label
            htmlFor="user-url"
            className="col-sm-12 col-md-3 col-form-label">
            Your URL
        </label>
        <div className="col-md-8">
          <input
              type="text"
              className="form-control-plaintext"
              id="user-url"
              defaultValue=""
              placeholder="domain.com/path/tp/page"
              onBlur={e => {
                this.onUrlChangeHandler(e.currentTarget.value);
              }}
            />
          </div>
       </div>
       <div className="form-group row">
         <label htmlFor="date" className="col-sm-12 col-md-3 col-form-label">
          Password
         </label>
         <div className="col-md-8">
           <input
              type="date"
              min={curDate}
              className="form-control"
              id="date"
              {...(this.state.minCode > -1
                ?{disabled:true}
                :{}
              )}
              value={this.state.date}
              onChange={e => {
                this.setState({date: e.currentTarget.value});
              }}
            />
         </div>
       </div>
       <button type="submit" className={"btn btn-primary" + (this.canSend()?'':' disabled')}>Sign in</button>
       {this.state.minCode > -1 && (
        <p>
           This page have alredy been minified.
           You can see info about
           <a href={"/info/" + this.state.minCode}>
            this page
           </a>
        </p>
       )}
     </form>);
  }
}
