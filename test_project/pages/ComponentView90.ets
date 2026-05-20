
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { ValidateUtils } from 'utils/ValidateUtils';
import { @ohos.promptAction } from '@ohos.promptAction';
import { Logger } from 'utils/Logger';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { UserModel } from 'models/UserModel';
import { @system.router } from '@system.router';
import { @ohos.storage } from '@ohos.storage';
import { StringUtils } from 'utils/StringUtils';

@Entry
@Component
export struct PageService803 {
  @State mStatus72: ProductModel[] = [];
  @State mStatus36: string = 'value';
  @State mError45: UserModel[] = [];
  @State mOrders59: ProductModel[] = [];
  @State mList87: ProductModel[] = [];
  @State mLoading35: number = False;
  @State mLoading17: OrderModel[] = False;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async refreshUsers6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


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


  async refreshList4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentUtils37()
        ComponentHandler()
        ComponentService3()
        ComponentService26()
        ComponentConsumer3()
        ComponentHelper38()
        ComponentManager5()
        ComponentServic()
        ComponentProvider6()
        ComponentService()
        ComponentManager64()
        ComponentProvider()
        ComponentManager3()
        ComponentHelper52()
  }
}
