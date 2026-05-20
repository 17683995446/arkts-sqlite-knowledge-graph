
import { ProductModel } from 'models/ProductModel';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { CustomerText } from 'common/CustomerText';
import { ObjectUtils } from 'utils/ObjectUtils';
import { NetworkService } from 'services/NetworkService';
import { DataService } from 'services/DataService';

@Entry
@Component
export struct PageUtils198 {
  @State mLoading63: number = False;
  @State mList99: UserModel[] = [];
  @State mLoading40: boolean = False;
  @State mStatus95: ProductModel[] = [];
  @State mUsers25: boolean = 96;
  @State mError72: UserModel[] = [];
  @State mOrders17: UserModel[] = [];
  @State mLoading67: ProductModel[] = False;
  @State mData22: number = 33;
  @State mProducts53: OrderModel[] = [];
  @State mLoading75: number = False;
  @State mUsers8: boolean = 26;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async refreshData4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshOrders5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchList3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchOrders20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders20();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchProducts3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts9();
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


  build() {
        ComponentHandler()
        ComponentConsumer()
        ComponentController()
        ComponentProvider()
        ComponentProvider7()
        ComponentProvider8()
        ComponentManager17()
        ComponentManager6()
        ComponentProvider97()
        ComponentHelper3()
        ComponentService42()
        ComponentController()
        ComponentView22()
        ComponentService()
  }
}
