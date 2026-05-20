
import { AuthService } from 'services/AuthService';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { @ohos.promptAction } from '@ohos.promptAction';
import { NetworkService } from 'services/NetworkService';
import { CustomerButton } from 'common/CustomerButton';

@Entry
@Component
export struct PageController568 {
  @State mLoading21: boolean = False;
  @State mStatus30: UserModel[] = [];
  @State mData61: string = 'value';
  @State mStatus34: boolean = 86;
  @State mLoading24: number = False;
  @State mProducts62: number = 76;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async loadList7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList7();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchData14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData14();
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


  async fetchData13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchUsers16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadUsers13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentService7()
        ComponentService3()
        ComponentService34()
        ComponentWidget()
        ComponentController()
        ComponentHelper6()
        ComponentWidget2()
        ComponentView()
        ComponentHandler90()
        ComponentController6()
        ComponentConsumer6()
        ComponentConsumer()
        ComponentManager7()
        ComponentWidget()
  }
}
