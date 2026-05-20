
import { CartModel } from 'models/CartModel';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { @ohos.hilog } from '@ohos.hilog';
import { StringUtils } from 'utils/StringUtils';
import { ConfigService } from 'services/ConfigService';
import { @ohos.promptAction } from '@ohos.promptAction';
import { CustomerButton } from 'common/CustomerButton';
import { DateUtils } from 'utils/DateUtils';

@Entry
@Component
export struct PageUtils613 {
  @State mUsers17: OrderModel[] = [];
  @State mOrders40: ProductModel[] = [];
  @State mError27: boolean = 51;
  @State mStatus80: UserModel[] = [];
  @State mLoading63: UserModel[] = False;
  @State mStatus40: UserModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async fetchList2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchOrders16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData9();
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


  async loadData3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentView()
        ComponentService67()
        ComponentView56()
        ComponentUtils91()
        ComponentUtils2()
        ComponentUtils34()
        ComponentWidget()
        ComponentConsumer5()
        ComponentHandler()
        ComponentWidget()
        ComponentUtils5()
        ComponentConsumer()
        ComponentProvider36()
        ComponentManager50()
  }
}
