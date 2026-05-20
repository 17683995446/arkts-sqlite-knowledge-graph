
import { OrderModel } from 'models/OrderModel';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { DateUtils } from 'utils/DateUtils';
import { CustomerButton } from 'common/CustomerButton';
import { UserModel } from 'models/UserModel';
import { @ohos.storage } from '@ohos.storage';
import { ArrayUtils } from 'utils/ArrayUtils';
import { @ohos.hilog } from '@ohos.hilog';
import { NetworkService } from 'services/NetworkService';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';

@Entry
@Component
export struct PageConsumer401 {
  @State mList93: UserModel[] = [];
  @State mOrders41: string = 'value';
  @State mStatus6: number = 74;
  @State mLoading84: string = 'value';
  @State mList95: UserModel[] = [];
  @State mLoading96: string = 'value';
  @State mError62: ProductModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async refreshProducts13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchList6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchData7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData7();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getUsers2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList7();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchProducts14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadUsers16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentManager()
        ComponentHelper1()
        ComponentService()
        ComponentController()
        ComponentService()
        ComponentProvider9()
  }
}
