
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { AuthService } from 'services/AuthService';
import { @ohos.storage } from '@ohos.storage';
import { ConfigService } from 'services/ConfigService';
import { ValidateUtils } from 'utils/ValidateUtils';
import { CustomerCard } from 'common/CustomerCard';
import { OrderModel } from 'models/OrderModel';
import { CustomerButton } from 'common/CustomerButton';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';

@Entry
@Component
export struct PageView347 {
  @State mStatus84: string = 'value';
  @State mUsers96: OrderModel[] = [];
  @State mLoading26: ProductModel[] = False;
  @State mData42: UserModel[] = [];
  @State mProducts6: UserModel[] = [];
  @State mError18: string = 'value';
  @State mProducts56: UserModel[] = [];
  @State mProducts52: OrderModel[] = [];
  @State mStatus86: string = 'value';
  @State mList33: OrderModel[] = [];
  @State mOrders64: number = 9;
  @State mList45: ProductModel[] = [];
  @State mLoading60: number = False;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async loadUsers15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchProducts15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshOrders14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchData11(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData11();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getOrders9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders9();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchProducts13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchProducts6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getOrders19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders19();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadProducts5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData11(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData11();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentUtils()
        ComponentConsumer()
        ComponentHelper3()
        ComponentUtils()
        ComponentService1()
        ComponentConsumer95()
        ComponentView()
  }
}
