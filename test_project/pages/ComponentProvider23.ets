
import { CustomerCard } from 'common/CustomerCard';
import { @system.router } from '@system.router';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { NetworkService } from 'services/NetworkService';
import { ObjectUtils } from 'utils/ObjectUtils';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { ValidateUtils } from 'utils/ValidateUtils';

@Entry
@Component
export struct PageProvider763 {
  @State mUsers90: ProductModel[] = [];
  @State mProducts2: UserModel[] = [];
  @State mProducts84: string = 'value';
  @State mUsers82: number = 50;
  @State mStatus81: number = 29;
  @State mProducts33: string = 'value';
  @State mProducts58: boolean = 46;
  @State mStatus66: ProductModel[] = [];
  @State mError68: OrderModel[] = [];
  @State mUsers58: boolean = 92;
  @State mOrders50: OrderModel[] = [];
  @State mProducts15: string = 'value';

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async refreshData3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts11(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts11();
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


  async fetchList13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList13();
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


  async loadList1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentService4()
        ComponentManager2()
        ComponentConsumer()
        ComponentService()
        ComponentView()
  }
}
