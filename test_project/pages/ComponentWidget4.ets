
import { DateUtils } from 'utils/DateUtils';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { @system.router } from '@system.router';
import { ConfigService } from 'services/ConfigService';
import { CustomerButton } from 'common/CustomerButton';
import { NetworkService } from 'services/NetworkService';

@Entry
@Component
export struct PageWidget573 {
  @State mList11: OrderModel[] = [];
  @State mList38: number = 10;
  @State mUsers51: ProductModel[] = [];
  @State mError73: boolean = 24;
  @State mUsers51: number = 79;
  @State mList41: number = 36;
  @State mStatus71: UserModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async fetchUsers17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getUsers8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getUsers6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentWidget3()
        ComponentHandler9()
        ComponentHelper66()
        ComponentView()
        ComponentHelper94()
        ComponentView8()
        ComponentProvider()
        ComponentHandler1()
        ComponentView76()
        ComponentController()
        ComponentVie()
        ComponentHandler7()
  }
}
