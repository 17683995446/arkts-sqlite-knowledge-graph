
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { @ohos.storage } from '@ohos.storage';
import { CustomerCard } from 'common/CustomerCard';
import { Logger } from 'utils/Logger';
import { CustomerText } from 'common/CustomerText';
import { @system.router } from '@system.router';

@Entry
@Component
export struct PageUtils967 {
  @State mError69: string = 'value';
  @State mOrders92: boolean = 64;
  @State mLoading97: boolean = False;
  @State mStatus28: UserModel[] = [];
  @State mOrders73: string = 'value';
  @State mUsers27: UserModel[] = [];
  @State mLoading51: boolean = False;
  @State mUsers78: boolean = 48;
  @State mData15: number = 17;
  @State mOrders81: UserModel[] = [];
  @State mList15: UserModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


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


  async refreshList20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList20();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getOrders19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders19();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData1();
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


  async loadData14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentConsumer59()
        ComponentView()
        ComponentHelper()
        ComponentService()
        ComponentView4()
        ComponentController21()
        ComponentConsumer()
        ComponentService()
        ComponentUtils()
        ComponentProvider()
        ComponentConsumer3()
        ComponentUtils()
        ComponentProvider1()
        ComponentUtils35()
  }
}
