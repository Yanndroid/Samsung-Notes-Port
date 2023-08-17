.class Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics$LogParamDetailValue;
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
    name = "LogParamDetailValue"
.end annotation


# instance fields
.field private mDetail:Ljava/lang/String;

.field private mEvent:Ljava/lang/String;

.field private mScreenID:Ljava/lang/String;

.field private mValue:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics$LogParamDetailValue;->mScreenID:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics$LogParamDetailValue;->mEvent:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics$LogParamDetailValue;->mDetail:Ljava/lang/String;

    iput-wide p4, p0, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics$LogParamDetailValue;->mValue:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/samsung/android/support/senl/nt/base/common/samsunganalytices/c;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics$LogParamDetailValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public insertLog()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics$LogParamDetailValue;->mScreenID:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics$LogParamDetailValue;->mEvent:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics$LogParamDetailValue;->mDetail:Ljava/lang/String;

    iget-wide v3, p0, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics$LogParamDetailValue;->mValue:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
