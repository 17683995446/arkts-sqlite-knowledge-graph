
import { ProductModel } from 'models/ProductModel';
import { @ohos.hilog } from '@ohos.hilog';
import { UserModel } from 'models/UserModel';
import { @ohos.storage } from '@ohos.storage';
import { StringUtils } from 'utils/StringUtils';
import { ObjectUtils } from 'utils/ObjectUtils';

@Entry
@Component
export struct PageService444 {
  @State mLoading74: ProductModel[] = False;
  @State mData93: ProductModel[] = [];
  @State mData47: number = 79;
  @State mError90: boolean = 61;
  @State mError89: OrderModel[] = [];
  @State mLoading100: ProductModel[] = False;
  @State mUsers1: string = 'value';
  @State mUsers95: OrderModel[] = [];
  @State mOrders97: OrderModel[] = [];
  @State mData80: boolean = 73;
  @State mProducts27: UserModel[] = [];
  @State mProducts61: UserModel[] = [];
  @State mProducts34: string = 'value';

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async getOrders15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchProducts15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadProducts20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts20();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData19();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchUsers11(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers11();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchData13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData13();
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


  async refreshProducts16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


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


  build() {
        ComponentManager()
        ComponentService()
        ComponentUtils()
        ComponentUtils2()
        ComponentWidget30()
        ComponentConsumer()
        ComponentWidget94()
        ComponentWidget()
        ComponentHandler9()
        ComponentConsumer()
        ComponentService()
        ComponentWidget()
  }
}
