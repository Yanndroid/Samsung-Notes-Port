.class public interface abstract Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract$ColumnNames;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ColumnNames"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract$ColumnNames$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract$ColumnNames;",
        "",
        "Companion",
        "deepsky-sdk-2.2.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ACTION_ID:Ljava/lang/String; = "actionId"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract$ColumnNames$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INTENT_NAME:Ljava/lang/String; = "intentName"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INTENT_URL:Ljava/lang/String; = "intentUrl"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PACKAGE_NAME:Ljava/lang/String; = "packageName"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PARAM_CONTENT:Ljava/lang/String; = "paramContent"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TIME_STAMP:Ljava/lang/String; = "timeStamp"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract$ColumnNames$Companion;->$$INSTANCE:Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract$ColumnNames$Companion;

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract$ColumnNames;->Companion:Lcom/samsung/android/app/sdk/deepsky/donation/schema/DonationContract$ColumnNames$Companion;

    return-void
.end method
