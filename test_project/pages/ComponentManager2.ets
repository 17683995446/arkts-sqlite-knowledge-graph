
import { Logger } from 'utils/Logger';
import { CustomerButton } from 'common/CustomerButton';
import { DateUtils } from 'utils/DateUtils';
import { UserModel } from 'models/UserModel';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { OrderModel } from 'models/OrderModel';
import { CartModel } from 'models/CartModel';

@Entry
@Component
export struct PageService335 {
  @State mData13: UserModel[] = [];
  @State mProducts3: OrderModel[] = [];
  @State mProducts56: OrderModel[] = [];
  @State mError5: UserModel[] = [];
  @State mError28: boolean = 24;
  @State mOrders100: ProductModel[] = [];
  @State mList35: OrderModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


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


  async getData16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchList10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getOrders6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadUsers1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers1();
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


  build() {
        ComponentController48()
        ComponentHandler()
        ComponentHandler5()
        ComponentUtils1()
        ComponentProvider6()
        ComponentView8()
        ComponentHelper()
        ComponentProvider9()
        ComponentView15()
        ComponentProvider()
        ComponentHelper62()
  }
}
