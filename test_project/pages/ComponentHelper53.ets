
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { @ohos.hilog } from '@ohos.hilog';
import { CartModel } from 'models/CartModel';
import { StringUtils } from 'utils/StringUtils';
import { AuthService } from 'services/AuthService';
import { Logger } from 'utils/Logger';
import { @ohos.promptAction } from '@ohos.promptAction';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { OrderModel } from 'models/OrderModel';

@Entry
@Component
export struct PageView404 {
  @State mError97: string = 'value';
  @State mError47: UserModel[] = [];
  @State mStatus96: number = 45;
  @State mError80: OrderModel[] = [];
  @State mData57: ProductModel[] = [];
  @State mProducts93: number = 81;
  @State mUsers62: string = 'value';
  @State mData61: ProductModel[] = [];
  @State mProducts27: ProductModel[] = [];
  @State mStatus83: OrderModel[] = [];
  @State mError11: ProductModel[] = [];
  @State mLoading56: boolean = False;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async fetchData2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList11(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList11();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchOrders18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders18();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshProducts10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList7();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchList19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList19();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshProducts5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentService()
        ComponentUtils4()
        ComponentHandler96()
        ComponentProvider84()
        ComponentService()
        ComponentController()
        ComponentWidget8()
        ComponentWidget9()
        ComponentProvider43()
        ComponentUtils()
        ComponentHelper64()
        ComponentService7()
        ComponentProvider()
        ComponentProvider()
  }
}
