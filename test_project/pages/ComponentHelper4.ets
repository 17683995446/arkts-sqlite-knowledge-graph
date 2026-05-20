
import { @ohos.storage } from '@ohos.storage';
import { DataService } from 'services/DataService';
import { @ohos.promptAction } from '@ohos.promptAction';
import { CartModel } from 'models/CartModel';
import { AuthService } from 'services/AuthService';
import { CustomerButton } from 'common/CustomerButton';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { ArrayUtils } from 'utils/ArrayUtils';

@Entry
@Component
export struct PageHelper299 {
  @State mUsers94: UserModel[] = [];
  @State mOrders21: number = 2;
  @State mError50: boolean = 93;
  @State mUsers1: OrderModel[] = [];
  @State mStatus84: ProductModel[] = [];
  @State mProducts2: UserModel[] = [];
  @State mLoading91: boolean = False;
  @State mUsers72: number = 67;
  @State mList7: UserModel[] = [];
  @State mLoading95: boolean = False;
  @State mStatus92: string = 'value';

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async fetchData8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchData8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList18();
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


  async fetchList7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList7();
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


  async getUsers16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchOrders13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchUsers6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchOrders18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders18();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentView77()
        ComponentConsumer78()
        ComponentController7()
        ComponentHandler()
        ComponentWidget1()
        ComponentConsumer()
        ComponentHelper2()
        ComponentWidget8()
        ComponentUtils()
        ComponentUtils4()
        ComponentController70()
        ComponentProvider9()
  }
}
