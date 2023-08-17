.class public interface abstract Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/IPenupView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/IPenupView$Companion;,
        Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/IPenupView$IPenupViewListener;,
        Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/IPenupView$IPenupInjector;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u0000 \u00062\u00020\u0001:\u0003\u0006\u0007\u0008J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/IPenupView;",
        "",
        "setPenUpListener",
        "",
        "listener",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/IPenupView$IPenupViewListener;",
        "Companion",
        "IPenupInjector",
        "IPenupViewListener",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/IPenupView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PENUP_CLIENT_DEBUG_MODE:Z = false

.field public static final PENUP_CLIENT_ID_ENG_DEBUG:Ljava/lang/String; = "6146111782873098"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PENUP_CLIENT_ID_ENG_DEBUG_SEP_LITE:Ljava/lang/String; = "6154459802710195"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PENUP_CLIENT_ID_ENG_RELEASE:Ljava/lang/String; = "6146111782834658"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PENUP_CLIENT_ID_ENG_RELEASE_SEP_LITE:Ljava/lang/String; = "6154459802710195"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PENUP_CLIENT_ID_USER_DEBUG:Ljava/lang/String; = "6146365240100980"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PENUP_CLIENT_ID_USER_DEBUG_SEP_LITE:Ljava/lang/String; = "6154459802638715"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PENUP_CLIENT_ID_USER_RELEASE:Ljava/lang/String; = "6146365240039541"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PENUP_CLIENT_ID_USER_RELEASE_SEP_LITE:Ljava/lang/String; = "6154459802638715"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PENUP_PACKAGE_NAME:Ljava/lang/String; = "com.sec.penup"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/IPenupView$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/IPenupView$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/IPenupView;->Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/IPenupView$Companion;

    return-void
.end method


# virtual methods
.method public abstract setPenUpListener(Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/IPenupView$IPenupViewListener;)V
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/IPenupView$IPenupViewListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
