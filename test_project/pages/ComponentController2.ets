
import { NetworkService } from 'services/NetworkService';
import { ConfigService } from 'services/ConfigService';
import { CustomerButton } from 'common/CustomerButton';
import { @ohos.promptAction } from '@ohos.promptAction';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { ProductModel } from 'models/ProductModel';
import { ObjectUtils } from 'utils/ObjectUtils';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';

@Entry
@Component
export struct PageView409 {
  @State mUsers8: string = 'value';
  @State mList58: OrderModel[] = [];
  @State mOrders12: OrderModel[] = [];
  @State mStatus85: OrderModel[] = [];
  @State mList22: UserModel[] = [];
  @State mOrders88: UserModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async loadData14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshUsers4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadUsers10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadUsers9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers9();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshOrders14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getOrders5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentHandler12()
        ComponentWidget1()
        ComponentView7()
        ComponentConsumer()
        ComponentServic()
        ComponentProvide()
        ComponentController3()
        ComponentService()
  }
}
