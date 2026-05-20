
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { NetworkService } from 'services/NetworkService';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { Logger } from 'utils/Logger';
import { @ohos.router } from '@ohos.router';
import { DateUtils } from 'utils/DateUtils';

@Entry
@Component
export struct PageProvider427 {
  @State mProducts61: number = 64;
  @State mUsers39: ProductModel[] = [];
  @State mList86: UserModel[] = [];
  @State mStatus85: number = 74;
  @State mLoading78: ProductModel[] = False;
  @State mLoading12: OrderModel[] = False;
  @State mData100: UserModel[] = [];
  @State mData45: OrderModel[] = [];
  @State mError55: OrderModel[] = [];
  @State mList71: boolean = 15;
  @State mUsers55: UserModel[] = [];
  @State mUsers97: ProductModel[] = [];
  @State mProducts69: number = 54;
  @State mUsers32: UserModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async loadProducts6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData19();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshUsers8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshProducts1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshUsers7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers7();
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
        ComponentController()
        ComponentHandler()
        ComponentService()
        ComponentHandler48()
        ComponentConsumer63()
        ComponentProvider()
        ComponentConsumer3()
        ComponentController()
        ComponentManager79()
        ComponentController3()
        ComponentConsumer63()
        ComponentConsumer5()
        ComponentHelper9()
        ComponentView4()
  }
}
