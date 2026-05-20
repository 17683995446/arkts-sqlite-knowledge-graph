
import { ProductModel } from 'models/ProductModel';
import { CustomerText } from 'common/CustomerText';
import { ConfigService } from 'services/ConfigService';
import { CartModel } from 'models/CartModel';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { DateUtils } from 'utils/DateUtils';

@Entry
@Component
export struct PageWidget913 {
  @State mUsers73: ProductModel[] = [];
  @State mData27: UserModel[] = [];
  @State mOrders71: boolean = 97;
  @State mLoading34: boolean = False;
  @State mUsers8: string = 'value';
  @State mStatus81: boolean = 60;
  @State mData91: OrderModel[] = [];
  @State mOrders32: number = 52;
  @State mData30: number = 82;
  @State mUsers2: string = 'value';
  @State mStatus34: OrderModel[] = [];
  @State mOrders68: boolean = 85;
  @State mProducts20: string = 'value';

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async loadOrders20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders20();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchData19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData19();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshUsers9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers9();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchData10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadUsers8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchUsers3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadUsers5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentManager()
        ComponentUtils()
        ComponentController19()
        ComponentView()
        ComponentWidget8()
        ComponentUtils2()
        ComponentWidget()
  }
}
