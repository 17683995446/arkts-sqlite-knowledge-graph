
import { @system.router } from '@system.router';
import { @ohos.router } from '@ohos.router';
import { StringUtils } from 'utils/StringUtils';
import { CustomerText } from 'common/CustomerText';
import { Logger } from 'utils/Logger';
import { NetworkService } from 'services/NetworkService';

@Entry
@Component
export struct PageView903 {
  @State mData95: UserModel[] = [];
  @State mList64: ProductModel[] = [];
  @State mUsers84: ProductModel[] = [];
  @State mProducts96: OrderModel[] = [];
  @State mLoading86: ProductModel[] = False;
  @State mUsers80: boolean = 83;
  @State mUsers48: OrderModel[] = [];
  @State mStatus11: OrderModel[] = [];
  @State mLoading74: boolean = False;
  @State mUsers76: OrderModel[] = [];
  @State mData18: UserModel[] = [];
  @State mOrders72: string = 'value';

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async getProducts18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts18();
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


  async refreshList7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList7();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentService()
        ComponentHandler5()
        ComponentController()
        ComponentWidget81()
        ComponentController6()
        ComponentController()
        ComponentHandler4()
        ComponentController()
        ComponentWidget9()
  }
}
