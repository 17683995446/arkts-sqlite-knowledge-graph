
import { CartModel } from 'models/CartModel';
import { ConfigService } from 'services/ConfigService';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { DataService } from 'services/DataService';
import { ArrayUtils } from 'utils/ArrayUtils';

@Entry
@Component
export struct PageView463 {
  @State mProducts100: string = 'value';
  @State mList4: OrderModel[] = [];
  @State mData27: OrderModel[] = [];
  @State mUsers62: ProductModel[] = [];
  @State mProducts65: number = 73;
  @State mUsers18: number = 91;
  @State mError15: OrderModel[] = [];
  @State mList54: string = 'value';
  @State mOrders37: boolean = 51;
  @State mOrders70: UserModel[] = [];
  @State mError12: number = 81;
  @State mError61: boolean = 45;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async refreshList15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshProducts19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts19();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData6();
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


  async fetchUsers16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentView()
        ComponentController1()
        ComponentController()
        ComponentController20()
        ComponentWidget()
  }
}
