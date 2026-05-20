
import { @system.router } from '@system.router';
import { ArrayUtils } from 'utils/ArrayUtils';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { UserModel } from 'models/UserModel';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';

@Entry
@Component
export struct PageWidget561 {
  @State mError65: boolean = 36;
  @State mData82: string = 'value';
  @State mData15: ProductModel[] = [];
  @State mProducts52: string = 'value';
  @State mData63: OrderModel[] = [];
  @State mError16: OrderModel[] = [];
  @State mData6: OrderModel[] = [];
  @State mUsers87: OrderModel[] = [];
  @State mData35: UserModel[] = [];
  @State mProducts16: string = 'value';
  @State mProducts9: ProductModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async refreshList13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshProducts6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshOrders15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders15();
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


  async refreshUsers19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers19();
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


  async getOrders11(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders11();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList9();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshUsers3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentConsumer77()
        ComponentConsumer9()
        ComponentView6()
        ComponentServic()
        ComponentView7()
        ComponentService()
        ComponentView61()
        ComponentHandle()
        ComponentView50()
        ComponentWidget21()
        ComponentView31()
        ComponentManager8()
  }
}
