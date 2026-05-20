
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { AuthService } from 'services/AuthService';
import { CustomerText } from 'common/CustomerText';
import { DateUtils } from 'utils/DateUtils';
import { UserModel } from 'models/UserModel';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';

@Entry
@Component
export struct PageProvider422 {
  @State mList9: ProductModel[] = [];
  @State mStatus2: boolean = 2;
  @State mProducts31: string = 'value';
  @State mList13: OrderModel[] = [];
  @State mStatus9: ProductModel[] = [];
  @State mUsers87: number = 100;
  @State mData48: number = 57;
  @State mStatus64: OrderModel[] = [];
  @State mOrders6: OrderModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async fetchList1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getOrders20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders20();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getUsers14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshOrders6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentWidget7()
        ComponentConsume()
        ComponentProvider()
        ComponentController1()
        ComponentWidget15()
        ComponentHandler()
  }
}
