
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { UserModel } from 'models/UserModel';
import { @system.router } from '@system.router';
import { CustomerButton } from 'common/CustomerButton';
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { ValidateUtils } from 'utils/ValidateUtils';

@Entry
@Component
export struct PageWidget528 {
  @State mStatus99: OrderModel[] = [];
  @State mError21: ProductModel[] = [];
  @State mStatus72: ProductModel[] = [];
  @State mData83: OrderModel[] = [];
  @State mUsers22: OrderModel[] = [];
  @State mStatus12: UserModel[] = [];
  @State mError43: boolean = 62;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async loadUsers12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData11(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData11();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchList20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList20();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList7();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData11(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData11();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentHelper4()
        ComponentWidge()
        ComponentController98()
        ComponentHelper()
        ComponentController8()
        ComponentProvider()
        ComponentProvider()
        ComponentService8()
  }
}
