
import { CartModel } from 'models/CartModel';
import { ProductModel } from 'models/ProductModel';
import { @system.router } from '@system.router';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { AuthService } from 'services/AuthService';
import { UserModel } from 'models/UserModel';
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.router } from '@ohos.router';

@Entry
@Component
export struct PageUtils136 {
  @State mProducts36: OrderModel[] = [];
  @State mProducts6: string = 'value';
  @State mError95: OrderModel[] = [];
  @State mError81: string = 'value';
  @State mError16: boolean = 32;
  @State mData72: number = 24;
  @State mOrders28: OrderModel[] = [];
  @State mStatus53: string = 'value';
  @State mLoading9: OrderModel[] = False;
  @State mList88: OrderModel[] = [];
  @State mList24: OrderModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async loadUsers4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchProducts10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshUsers20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers20();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadProducts7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts7();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentVie()
        ComponentUtil()
        ComponentController5()
        ComponentService2()
        ComponentManager85()
        ComponentService68()
        ComponentService()
        ComponentManager()
        ComponentHandler()
        ComponentConsumer3()
        ComponentHandler20()
        ComponentUtil()
        ComponentConsumer()
        ComponentHelper1()
  }
}
