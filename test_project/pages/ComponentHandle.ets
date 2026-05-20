
import { OrderModel } from 'models/OrderModel';
import { @ohos.router } from '@ohos.router';
import { NetworkService } from 'services/NetworkService';
import { DataService } from 'services/DataService';
import { DateUtils } from 'utils/DateUtils';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';

@Entry
@Component
export struct PageManager214 {
  @State mData85: UserModel[] = [];
  @State mProducts6: UserModel[] = [];
  @State mStatus19: boolean = 28;
  @State mLoading81: number = False;
  @State mData94: number = 74;
  @State mError100: boolean = 94;
  @State mOrders66: string = 'value';
  @State mError83: boolean = 96;
  @State mProducts46: UserModel[] = [];
  @State mUsers77: OrderModel[] = [];
  @State mProducts40: OrderModel[] = [];
  @State mUsers55: string = 'value';
  @State mError61: boolean = 1;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async getProducts4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData6();
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


  async fetchOrders10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshUsers17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData19();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentProvider()
        ComponentWidget38()
        ComponentView5()
        ComponentHelper()
        ComponentHandler56()
        ComponentService()
        ComponentView1()
        ComponentView8()
        ComponentManager()
        ComponentManager3()
        ComponentWidget()
  }
}
