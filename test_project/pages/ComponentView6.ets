
import { Logger } from 'utils/Logger';
import { OrderModel } from 'models/OrderModel';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { DateUtils } from 'utils/DateUtils';
import { NetworkService } from 'services/NetworkService';
import { ConfigService } from 'services/ConfigService';
import { @ohos.router } from '@ohos.router';
import { AuthService } from 'services/AuthService';
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';

@Entry
@Component
export struct PageService887 {
  @State mUsers85: string = 'value';
  @State mOrders21: boolean = 30;
  @State mProducts70: number = 52;
  @State mOrders9: OrderModel[] = [];
  @State mOrders22: UserModel[] = [];
  @State mProducts83: string = 'value';
  @State mError81: string = 'value';
  @State mLoading43: string = 'value';
  @State mOrders6: ProductModel[] = [];
  @State mList20: UserModel[] = [];
  @State mData70: OrderModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async fetchUsers4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchList16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadProducts1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshProducts3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData4();
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


  build() {
        ComponentManager()
        ComponentHelper()
        ComponentConsumer40()
        ComponentUtils8()
        ComponentService49()
        ComponentService9()
        ComponentManager45()
        ComponentController()
        ComponentHandler()
        ComponentHandler69()
  }
}
