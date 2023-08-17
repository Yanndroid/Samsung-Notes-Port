.class public final Lcom/samsung/android/app/sdk/deepsky/contract/smartwidget/SmartWidgetContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/contract/smartwidget/SmartWidgetContract;",
        "",
        "()V",
        "IS_ACTIVE",
        "",
        "RESULT_SMART_WIDGET",
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
.field public static final INSTANCE:Lcom/samsung/android/app/sdk/deepsky/contract/smartwidget/SmartWidgetContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final IS_ACTIVE:Ljava/lang/String; = "is_active"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RESULT_SMART_WIDGET:Ljava/lang/String; = "result_smart_widget"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/contract/smartwidget/SmartWidgetContract;

    invoke-direct {v0}, Lcom/samsung/android/app/sdk/deepsky/contract/smartwidget/SmartWidgetContract;-><init>()V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/contract/smartwidget/SmartWidgetContract;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/contract/smartwidget/SmartWidgetContract;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
