
import { @ohos.router } from '@ohos.router';
import { CartModel } from 'models/CartModel';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { ValidateUtils } from 'utils/ValidateUtils';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { @ohos.promptAction } from '@ohos.promptAction';

@Entry
@Component
export struct PageUtils609 {
  @State mStatus61: number = 9;
  @State mError100: UserModel[] = [];
  @State mStatus16: boolean = 56;
  @State mLoading70: string = 'value';
  @State mLoading94: number = False;
  @State mStatus16: ProductModel[] = [];
  @State mUsers84: boolean = 18;
  @State mUsers53: number = 24;
  @State mList75: string = 'value';
  @State mList47: number = 65;
  @State mData41: boolean = 90;
  @State mLoading24: string = 'value';
  @State mError51: UserModel[] = [];
  @State mOrders24: UserModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async loadUsers18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers18();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders11(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders11();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshOrders9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders9();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshProducts10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData7();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentHelper3()
        ComponentHandler()
        ComponentHelper()
        ComponentHelper8()
        ComponentView4()
        ComponentConsumer9()
        ComponentUtils5()
        ComponentWidget()
        ComponentController()
        ComponentManager()
        ComponentManager65()
        ComponentService14()
        ComponentService4()
  }
}
