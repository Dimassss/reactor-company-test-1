import { Server } from "./Server";

export class UrlServer extends Server{
  async minifyUrl({url, date}: {url: string, date: string}): Promise<any> {
    let res = await this.fetch('POST', '/func/minifyUrl/', JSON.stringify({url, date}));
    return await res.json();
  }

  async getUrlInfo(url: string){
    let res = await this.fetch('POST', '/func/getUrlInfo/', JSON.stringify({url}));
    return await res.json();
  }
}
