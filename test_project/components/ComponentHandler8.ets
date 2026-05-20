
import { ObjectUtils } from 'utils/ObjectUtils';
import { UserModel } from 'models/UserModel';
import { AuthService } from 'services/AuthService';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';

@Preview
@Component
export struct ComponentWidget669 {
  @State mCount32: string = 'value17';
  @State mAge39: boolean = 'true';

  build() {
        Column() {
          TextInput('Item 0')
          Button('Item 1')
          Text('Item 2')
        }
        Column() {
          Button('Item 0')
        }
        Column() {
          Text('Item 0')
          TextInput('Item 1')
        }
        Row() {
          List('Item 0')
        }
        Flex() {
          List('Item 0')
          List('Item 1')
          Text('Item 2')
        }
        Column() {
          List('Item 0')
        }
  }

  onRefresh4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
