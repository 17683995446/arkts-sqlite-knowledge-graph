
import { NetworkService } from 'services/NetworkService';
import { UserModel } from 'models/UserModel';
import { CustomerCard } from 'common/CustomerCard';
import { CustomerText } from 'common/CustomerText';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { @ohos.promptAction } from '@ohos.promptAction';
import { @ohos.router } from '@ohos.router';
import { CustomerButton } from 'common/CustomerButton';

@Entry
@Component
export struct PageUtils239 {
  @State mUsers48: UserModel[] = [];
  @State mUsers69: UserModel[] = [];
  @State mUsers20: OrderModel[] = [];
  @State mOrders62: ProductModel[] = [];
  @State mUsers7: OrderModel[] = [];
  @State mData21: OrderModel[] = [];
  @State mData46: string = 'value';
  @State mOrders19: OrderModel[] = [];
  @State mStatus79: string = 'value';
  @State mLoading15: boolean = False;
  @State mUsers61: number = 25;
  @State mUsers10: ProductModel[] = [];
  @State mProducts25: ProductModel[] = [];
  @State mOrders86: UserModel[] = [];
  @State mOrders77: string = 'value';

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async loadUsers17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchOrders17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchOrders5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadProducts18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts18();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchData2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders8();
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


  async fetchList20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList20();
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


  async refreshOrders4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentHelper63()
        ComponentController4()
        ComponentWidget8()
        ComponentProvider()
        ComponentController4()
        ComponentProvider31()
        ComponentView77()
        ComponentHandler3()
        ComponentView8()
        ComponentWidget9()
        ComponentView()
        ComponentView()
  }
}
