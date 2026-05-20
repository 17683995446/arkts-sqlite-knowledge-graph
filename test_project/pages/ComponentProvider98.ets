
import { ArrayUtils } from 'utils/ArrayUtils';
import { ObjectUtils } from 'utils/ObjectUtils';
import { AuthService } from 'services/AuthService';
import { @ohos.hilog } from '@ohos.hilog';
import { ValidateUtils } from 'utils/ValidateUtils';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { CustomerCard } from 'common/CustomerCard';
import { OrderModel } from 'models/OrderModel';
import { CustomerText } from 'common/CustomerText';

@Entry
@Component
export struct PageProvider67 {
  @State mError43: OrderModel[] = [];
  @State mProducts42: boolean = 21;
  @State mOrders50: number = 14;
  @State mData34: UserModel[] = [];
  @State mProducts16: OrderModel[] = [];
  @State mLoading42: number = False;
  @State mList17: OrderModel[] = [];
  @State mError24: number = 8;
  @State mLoading30: boolean = False;
  @State mError31: OrderModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


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


  async getUsers6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getUsers13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadProducts14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchOrders2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchData13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData13();
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


  async refreshProducts2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadProducts12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentHandler()
        ComponentHandler()
        ComponentWidget()
        ComponentUtils5()
        ComponentController47()
        ComponentConsumer()
        ComponentHandler83()
        ComponentHelper21()
        ComponentHandler2()
        ComponentWidget18()
        ComponentProvider()
        ComponentManager5()
        ComponentManager5()
        ComponentController()
  }
}
