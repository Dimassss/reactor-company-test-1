import { Server } from "./Server";

export class UrlServer extends Server{
  async getUrlInfo(url: string){
    let res = await this.fetch('POST', '/func/getUrlInfo', JSON.stringify({url}));
    return await res.json();
  }
}
