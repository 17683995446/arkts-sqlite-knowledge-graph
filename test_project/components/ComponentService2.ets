
import { ObjectUtils } from 'utils/ObjectUtils';
import { AuthService } from 'services/AuthService';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { CustomerButton } from 'common/CustomerButton';

@State
@Component
export struct ComponentProvider943 {
  @State mStatus47: UserModel[] = 39;
  @State mStatus45: UserModel[] = 82;
  @State mCount15: number = 61;
  @State mCount29: boolean = 'true';

  build() {
        Column() {
          TextInput('Item 0')
        }
        Stack() {
          Text('Item 0')
        }
        Flex() {
          List('Item 0')
          List('Item 1')
        }
        Row() {
          Button('Item 0')
          TextInput('Item 1')
          Image('Item 2')
        }
        Row() {
          Text('Item 0')
          List('Item 1')
        }
        Flex() {
          TextInput('Item 0')
          Image('Item 1')
          TextInput('Item 2')
        }
        Flex() {
          Button('Item 0')
          TextInput('Item 1')
        }
        Column() {
          Image('Item 0')
        }
        Flex() {
          List('Item 0')
          Image('Item 1')
          List('Item 2')
        }
  }

  onChange15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
