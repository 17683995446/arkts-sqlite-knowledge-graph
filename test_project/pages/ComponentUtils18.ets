
import { CustomerButton } from 'common/CustomerButton';
import { OrderModel } from 'models/OrderModel';
import { DataService } from 'services/DataService';
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.router } from '@ohos.router';
import { @ohos.promptAction } from '@ohos.promptAction';

@Entry
@Component
export struct PageView116 {
  @State mLoading22: OrderModel[] = False;
  @State mOrders38: ProductModel[] = [];
  @State mError66: UserModel[] = [];
  @State mList97: boolean = 44;
  @State mOrders19: OrderModel[] = [];
  @State mData57: UserModel[] = [];
  @State mLoading27: OrderModel[] = False;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async fetchUsers13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getUsers12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData20();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadProducts10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshOrders1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshProducts9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts9();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshOrders7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders7();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentService()
        ComponentProvider()
        ComponentProvider()
        ComponentHelper57()
        ComponentController()
        ComponentHandler()
        ComponentHandler88()
  }
}
