.class Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics$LogParamEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics$ILogParam;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogParamEvent"
.end annotation


# instance fields
.field private mEvent:Ljava/lang/String;

.field private mScreenID:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics$LogParamEvent;->mScreenID:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics$LogParamEvent;->mEvent:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics$LogParamEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public insertLog()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics$LogParamEvent;->mScreenID:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics$LogParamEvent;->mEvent:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
