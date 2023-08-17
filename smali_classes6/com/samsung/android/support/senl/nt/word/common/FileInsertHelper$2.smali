.class synthetic Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$samsung$android$support$senl$nt$word$common$FileInsertHelper$TaskName:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;->values()[Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$2;->$SwitchMap$com$samsung$android$support$senl$nt$word$common$FileInsertHelper$TaskName:[I

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;->AUDIO:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$2;->$SwitchMap$com$samsung$android$support$senl$nt$word$common$FileInsertHelper$TaskName:[I

    sget-object v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;->BACKGROUND:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$2;->$SwitchMap$com$samsung$android$support$senl$nt$word$common$FileInsertHelper$TaskName:[I

    sget-object v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;->IMAGE:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$2;->$SwitchMap$com$samsung$android$support$senl$nt$word$common$FileInsertHelper$TaskName:[I

    sget-object v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;->HANDWRITING:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$2;->$SwitchMap$com$samsung$android$support$senl$nt$word$common$FileInsertHelper$TaskName:[I

    sget-object v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;->VOICE:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
