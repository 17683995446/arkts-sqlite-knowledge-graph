
import { ValidateUtils } from 'utils/ValidateUtils';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { DateUtils } from 'utils/DateUtils';
import { @ohos.promptAction } from '@ohos.promptAction';
import { AuthService } from 'services/AuthService';

@Entry
@Component
export struct PageView361 {
  @State mUsers88: UserModel[] = [];
  @State mData61: OrderModel[] = [];
  @State mStatus23: ProductModel[] = [];
  @State mData64: string = 'value';
  @State mOrders14: number = 9;
  @State mData91: number = 99;
  @State mOrders93: string = 'value';
  @State mOrders60: OrderModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async loadOrders6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchData3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getUsers5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData11(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData11();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchList5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentHelper()
        ComponentController7()
        ComponentManager3()
        ComponentService5()
        ComponentUtils7()
        ComponentProvider5()
  }
}
