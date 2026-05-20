
import { @ohos.hilog } from '@ohos.hilog';
import { ConfigService } from 'services/ConfigService';
import { UserModel } from 'models/UserModel';
import { AuthService } from 'services/AuthService';
import { ProductModel } from 'models/ProductModel';
import { CartModel } from 'models/CartModel';
import { CustomerButton } from 'common/CustomerButton';
import { @ohos.router } from '@ohos.router';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { DateUtils } from 'utils/DateUtils';

@Entry
@Component
export struct PageHelper717 {
  @State mLoading94: number = False;
  @State mData51: boolean = 76;
  @State mData45: OrderModel[] = [];
  @State mLoading98: boolean = False;
  @State mProducts88: OrderModel[] = [];
  @State mStatus40: OrderModel[] = [];
  @State mOrders84: OrderModel[] = [];
  @State mError33: OrderModel[] = [];
  @State mUsers21: string = 'value';
  @State mError42: UserModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async loadUsers3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchOrders12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchOrders6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshUsers13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers13();
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


  async getData17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentHelper11()
        ComponentProvide()
        ComponentConsumer()
        ComponentUtils()
        ComponentHelper()
        ComponentProvider5()
  }
}
