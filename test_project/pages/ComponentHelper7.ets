
import { @ohos.router } from '@ohos.router';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { ObjectUtils } from 'utils/ObjectUtils';
import { @ohos.hilog } from '@ohos.hilog';
import { CustomerButton } from 'common/CustomerButton';
import { @system.router } from '@system.router';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { StringUtils } from 'utils/StringUtils';
import { DateUtils } from 'utils/DateUtils';

@Entry
@Component
export struct PageHelper19 {
  @State mProducts7: string = 'value';
  @State mData62: UserModel[] = [];
  @State mLoading66: OrderModel[] = False;
  @State mError28: UserModel[] = [];
  @State mProducts37: ProductModel[] = [];
  @State mLoading71: boolean = False;
  @State mList89: UserModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async loadData11(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData11();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshOrders1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchList7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList7();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders18();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchUsers7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers7();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshUsers2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentHelper()
        ComponentController()
        ComponentView()
        ComponentWidget()
        ComponentUtils64()
        ComponentService16()
        ComponentProvider46()
        ComponentHelper8()
        ComponentConsumer34()
        ComponentProvider3()
        ComponentHandle()
        ComponentController8()
        ComponentHandler()
        ComponentUtils9()
  }
}
