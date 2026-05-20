
import { CustomerButton } from 'common/CustomerButton';
import { DataService } from 'services/DataService';
import { ProductModel } from 'models/ProductModel';
import { @ohos.router } from '@ohos.router';
import { OrderModel } from 'models/OrderModel';

@Entry
@Component
export struct PageManager202 {
  @State mStatus51: OrderModel[] = [];
  @State mLoading80: UserModel[] = False;
  @State mProducts32: string = 'value';
  @State mError84: boolean = 27;
  @State mList3: OrderModel[] = [];
  @State mError40: number = 4;
  @State mLoading41: ProductModel[] = False;
  @State mList46: OrderModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async getList9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList9();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList2();
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


  async fetchUsers1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData20();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchProducts1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList18();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentController5()
        ComponentManager23()
        ComponentUtils5()
        ComponentUtils76()
        ComponentService()
        ComponentHelper()
        ComponentView3()
        ComponentView()
  }
}
