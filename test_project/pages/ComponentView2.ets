
import { DataService } from 'services/DataService';
import { @system.router } from '@system.router';
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { AuthService } from 'services/AuthService';
import { StringUtils } from 'utils/StringUtils';
import { ObjectUtils } from 'utils/ObjectUtils';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';

@Entry
@Component
export struct PageView804 {
  @State mUsers49: UserModel[] = [];
  @State mLoading71: UserModel[] = False;
  @State mUsers32: OrderModel[] = [];
  @State mProducts56: UserModel[] = [];
  @State mError49: number = 64;
  @State mProducts95: UserModel[] = [];
  @State mError84: UserModel[] = [];
  @State mStatus58: OrderModel[] = [];
  @State mOrders71: number = 53;
  @State mError6: OrderModel[] = [];
  @State mList96: UserModel[] = [];
  @State mProducts16: number = 51;
  @State mStatus74: UserModel[] = [];
  @State mProducts39: boolean = 76;
  @State mProducts47: string = 'value';

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async fetchData6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts7();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


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


  async fetchProducts3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts3();
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


  async refreshList6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentService30()
        ComponentProvider()
        ComponentManager6()
        ComponentHandler85()
        ComponentConsumer70()
        ComponentUtils8()
        ComponentManager13()
        ComponentView7()
        ComponentProvider46()
        ComponentView9()
        ComponentHandler()
  }
}
