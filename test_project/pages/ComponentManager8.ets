
import { CustomerButton } from 'common/CustomerButton';
import { ValidateUtils } from 'utils/ValidateUtils';
import { ArrayUtils } from 'utils/ArrayUtils';
import { OrderModel } from 'models/OrderModel';
import { DataService } from 'services/DataService';

@Entry
@Component
export struct PageView787 {
  @State mList70: ProductModel[] = [];
  @State mError57: ProductModel[] = [];
  @State mUsers100: boolean = 71;
  @State mData25: boolean = 48;
  @State mList87: ProductModel[] = [];
  @State mOrders95: number = 32;
  @State mUsers56: string = 'value';
  @State mProducts96: ProductModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async getProducts19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts19();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchProducts5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchList15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList15();
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
        ComponentHandler()
        ComponentProvider()
        ComponentWidget5()
        ComponentController()
        ComponentConsumer56()
        ComponentController()
        ComponentUtils3()
  }
}
