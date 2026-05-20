
import { ArrayUtils } from 'utils/ArrayUtils';
import { AuthService } from 'services/AuthService';
import { NetworkService } from 'services/NetworkService';
import { DateUtils } from 'utils/DateUtils';
import { CustomerCard } from 'common/CustomerCard';
import { @system.router } from '@system.router';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { @ohos.storage } from '@ohos.storage';

@Entry
@Component
export struct PageConsumer806 {
  @State mUsers85: OrderModel[] = [];
  @State mUsers9: OrderModel[] = [];
  @State mOrders66: OrderModel[] = [];
  @State mList61: number = 95;
  @State mOrders11: UserModel[] = [];
  @State mProducts41: string = 'value';
  @State mLoading84: ProductModel[] = False;
  @State mStatus86: number = 30;
  @State mUsers61: ProductModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async getUsers7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers7();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList16();
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


  async fetchList12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getUsers18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers18();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadUsers1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentHelper()
        ComponentHelper6()
        ComponentServi()
        ComponentManager()
        ComponentConsumer()
  }
}
