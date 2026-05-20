
import { ArrayUtils } from 'utils/ArrayUtils';
import { ObjectUtils } from 'utils/ObjectUtils';
import { DateUtils } from 'utils/DateUtils';
import { CustomerCard } from 'common/CustomerCard';
import { StringUtils } from 'utils/StringUtils';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { UserModel } from 'models/UserModel';
import { OrderModel } from 'models/OrderModel';
import { NetworkService } from 'services/NetworkService';

@Entry
@Component
export struct PageWidget485 {
  @State mError13: string = 'value';
  @State mStatus48: string = 'value';
  @State mStatus63: boolean = 56;
  @State mData52: ProductModel[] = [];
  @State mData42: boolean = 0;
  @State mOrders62: string = 'value';
  @State mLoading69: UserModel[] = False;
  @State mUsers28: string = 'value';
  @State mOrders56: ProductModel[] = [];
  @State mList89: UserModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async refreshProducts15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getOrders11(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders11();
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


  async refreshUsers19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers19();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchList14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchUsers6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentWidget()
        ComponentHandle()
        ComponentView88()
        ComponentProvider7()
        ComponentConsumer()
        ComponentConsumer8()
        ComponentManager()
        ComponentUtils()
        ComponentHandler()
        ComponentManager2()
        ComponentService3()
        ComponentWidget7()
        ComponentUtils9()
        ComponentConsumer19()
  }
}
