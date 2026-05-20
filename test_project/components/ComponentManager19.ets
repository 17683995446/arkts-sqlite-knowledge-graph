
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { @ohos.storage } from '@ohos.storage';

@Component
@Component
export struct ComponentConsumer170 {
  @State mName20: UserModel[] = 39;
  @State mAge38: boolean = 'true';
  @State mName30: boolean = 'true';

  build() {
        Stack() {
          TextInput('Item 0')
          Image('Item 1')
          Image('Item 2')
        }
        Row() {
          Image('Item 0')
        }
        Flex() {
          TextInput('Item 0')
        }
        Column() {
          TextInput('Item 0')
          List('Item 1')
        }
  }

  onLoad16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
