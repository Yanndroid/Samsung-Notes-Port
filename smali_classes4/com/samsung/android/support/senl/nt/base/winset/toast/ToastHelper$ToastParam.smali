.class public Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToastParam"
.end annotation


# instance fields
.field public duration:I

.field public isCancelable:Z

.field public isEncodeLog:Z

.field public isGravityBottom:Z

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;->message:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;->duration:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;->isCancelable:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;->isGravityBottom:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;->isEncodeLog:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;->message:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;->duration:I

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;->isCancelable:Z

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;->isGravityBottom:Z

    iput-boolean p5, p0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;->isEncodeLog:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IZZZLcom/samsung/android/support/senl/nt/base/winset/toast/b;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;-><init>(Ljava/lang/String;IZZZ)V

    return-void
.end method
