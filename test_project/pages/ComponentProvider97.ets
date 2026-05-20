
import { ConfigService } from 'services/ConfigService';
import { ProductModel } from 'models/ProductModel';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { @ohos.promptAction } from '@ohos.promptAction';
import { ArrayUtils } from 'utils/ArrayUtils';

@Entry
@Component
export struct PageManager326 {
  @State mOrders70: UserModel[] = [];
  @State mStatus52: number = 77;
  @State mProducts59: OrderModel[] = [];
  @State mLoading15: string = 'value';
  @State mStatus31: OrderModel[] = [];
  @State mOrders29: OrderModel[] = [];
  @State mUsers29: OrderModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async fetchProducts17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadProducts2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getUsers20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers20();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList12();
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


  build() {
        ComponentProvider7()
        ComponentController84()
        ComponentWidget()
        ComponentProvide()
        ComponentProvider48()
        ComponentWidget8()
        ComponentUtils()
        ComponentManager()
        ComponentProvider2()
        ComponentHelper()
  }
}
