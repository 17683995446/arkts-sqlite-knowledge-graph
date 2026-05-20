
import { @system.router } from '@system.router';
import { CustomerButton } from 'common/CustomerButton';
import { UserModel } from 'models/UserModel';
import { NetworkService } from 'services/NetworkService';
import { ConfigService } from 'services/ConfigService';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';

@Preview
@Component
export struct ComponentService83 {
  @State mAge25: UserModel[] = 62;
  @State mAge7: UserModel[] = 99;
  @State mAge46: UserModel[] = 69;

  build() {
        Row() {
          List('Item 0')
        }
        Column() {
          TextInput('Item 0')
        }
        Row() {
          Image('Item 0')
        }
        Column() {
          Text('Item 0')
          List('Item 1')
          TextInput('Item 2')
        }
        Column() {
          List('Item 0')
        }
        Row() {
          TextInput('Item 0')
        }
        Row() {
          Text('Item 0')
          Button('Item 1')
          TextInput('Item 2')
        }
        Row() {
          Image('Item 0')
        }
        Column() {
          Button('Item 0')
          Button('Item 1')
          Image('Item 2')
        }
  }

  onLoad13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
