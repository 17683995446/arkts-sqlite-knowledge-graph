
import { @system.router } from '@system.router';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { @ohos.hilog } from '@ohos.hilog';
import { CustomerButton } from 'common/CustomerButton';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { UserModel } from 'models/UserModel';

@Entry
@Component
export struct PageHandler81 {
  @State mList26: UserModel[] = [];
  @State mStatus32: boolean = 50;
  @State mList23: number = 13;
  @State mStatus34: UserModel[] = [];
  @State mData89: UserModel[] = [];
  @State mUsers64: string = 'value';
  @State mError56: UserModel[] = [];
  @State mOrders6: OrderModel[] = [];
  @State mStatus26: UserModel[] = [];
  @State mError17: number = 51;
  @State mStatus33: OrderModel[] = [];
  @State mUsers97: UserModel[] = [];
  @State mList74: string = 'value';
  @State mError57: OrderModel[] = [];
  @State mData31: number = 77;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async refreshData7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData7();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData14();
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


  async loadProducts8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchList14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentController83()
        ComponentHelper()
        ComponentController39()
        ComponentView()
        ComponentHandler63()
        ComponentProvider43()
        ComponentHandler7()
        ComponentProvider()
        ComponentHandler3()
        ComponentConsumer()
        ComponentConsumer()
        ComponentUtils41()
        ComponentHelper()
        ComponentConsumer96()
        ComponentView()
  }
}
