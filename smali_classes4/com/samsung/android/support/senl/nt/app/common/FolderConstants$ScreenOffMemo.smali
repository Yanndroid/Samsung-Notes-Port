.class public interface abstract Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/common/FolderConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScreenOffMemo"
.end annotation


# static fields
.field public static final DISPLAY_NAME:Ljava/lang/String;

.field public static final PATH:Ljava/lang/String;

.field public static final UUID:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->SCREEN_OFF_MEMO:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getPath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->PATH:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->DISPLAY_NAME:Ljava/lang/String;

    return-void
.end method
