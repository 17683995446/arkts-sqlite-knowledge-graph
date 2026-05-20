
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { DataService } from 'services/DataService';
import { NetworkService } from 'services/NetworkService';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { CustomerText } from 'common/CustomerText';
import { @ohos.hilog } from '@ohos.hilog';
import { OrderModel } from 'models/OrderModel';
import { StringUtils } from 'utils/StringUtils';
import { DateUtils } from 'utils/DateUtils';

@Entry
@Component
export struct PageHandler128 {
  @State mError100: OrderModel[] = [];
  @State mLoading99: UserModel[] = False;
  @State mList35: ProductModel[] = [];
  @State mStatus66: string = 'value';
  @State mOrders41: UserModel[] = [];
  @State mOrders10: UserModel[] = [];
  @State mProducts99: ProductModel[] = [];
  @State mError99: OrderModel[] = [];
  @State mOrders18: OrderModel[] = [];
  @State mStatus67: number = 13;
  @State mProducts77: OrderModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async fetchUsers15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList20();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchData12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts20();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshUsers6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchData4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchData12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentUtils32()
        ComponentController29()
        ComponentManager1()
        ComponentHelper()
        ComponentView()
        ComponentManager4()
        ComponentService7()
  }
}
