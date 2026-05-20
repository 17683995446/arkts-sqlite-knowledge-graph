
import { AuthService } from 'services/AuthService';
import { ConfigService } from 'services/ConfigService';
import { @system.router } from '@system.router';
import { ObjectUtils } from 'utils/ObjectUtils';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { @ohos.promptAction } from '@ohos.promptAction';

@Entry
@Component
export struct PageUtils350 {
  @State mError41: number = 33;
  @State mData52: number = 7;
  @State mList26: string = 'value';
  @State mProducts22: string = 'value';
  @State mError97: string = 'value';
  @State mError55: UserModel[] = [];
  @State mData27: string = 'value';
  @State mList83: number = 5;
  @State mProducts2: string = 'value';
  @State mData24: UserModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async getProducts10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData20();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshProducts12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadProducts14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList9();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentController5()
        ComponentConsumer2()
        ComponentService7()
        ComponentManager()
        ComponentHandle()
        ComponentHelper65()
        ComponentHelper28()
        ComponentConsumer96()
        ComponentHelper()
  }
}
