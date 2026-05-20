
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { CustomerCard } from 'common/CustomerCard';
import { @system.router } from '@system.router';
import { AuthService } from 'services/AuthService';
import { CartModel } from 'models/CartModel';
import { ValidateUtils } from 'utils/ValidateUtils';
import { DateUtils } from 'utils/DateUtils';

@Entry
@Component
export struct PageView463 {
  @State mProducts91: number = 64;
  @State mLoading29: UserModel[] = False;
  @State mError63: OrderModel[] = [];
  @State mData92: boolean = 16;
  @State mStatus88: OrderModel[] = [];
  @State mStatus98: boolean = 1;
  @State mLoading11: boolean = False;
  @State mLoading81: UserModel[] = False;
  @State mLoading34: boolean = False;
  @State mUsers2: ProductModel[] = [];
  @State mProducts2: OrderModel[] = [];
  @State mProducts47: number = 32;
  @State mLoading65: UserModel[] = False;
  @State mData79: boolean = 37;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async getProducts3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getOrders14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadProducts17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList5();
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


  build() {
        ComponentView()
        ComponentWidget()
        ComponentConsumer()
        ComponentManager9()
        ComponentService37()
        ComponentManager29()
        ComponentHelper6()
        ComponentWidget()
        ComponentController5()
        ComponentService64()
        ComponentConsumer()
        ComponentWidget()
        ComponentManager95()
        ComponentView4()
        ComponentManager51()
  }
}
