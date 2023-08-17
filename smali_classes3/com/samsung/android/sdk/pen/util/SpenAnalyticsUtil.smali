.class public Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil$AnalyticsListener;
    }
.end annotation


# static fields
.field public static final EVENT_CTT_RESULT_CONVERT:I = 0x10d6

.field public static final EVENT_CTT_RESULT_COPY:I = 0x10df

.field public static final EVENT_WRITING_EXTRACT_TEXT_RESULT_CLOSE:I = 0x119a

.field public static final EVENT_WRITING_EXTRACT_TEXT_RESULT_CONVERT:I = 0x119c

.field public static final EVENT_WRITING_EXTRACT_TEXT_RESULT_COPY:I = 0x119b

.field public static final EVENT_WRITING_EXTRACT_TEXT_RESULT_SETTINGS:I = 0x1199

.field public static final SCREEN_CTT:I = 0x19c

.field public static final SCREEN_NONE:I = 0x0

.field public static final SCREEN_WRITING:I = 0x19b

.field private static final TAG:Ljava/lang/String; = "SpenAnalyticsUtil"

.field private static mInstance:Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil$AnalyticsListener;

.field private mNativeInstance:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->mNativeInstance:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->mListener:Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil$AnalyticsListener;

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->Native_init()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->mNativeInstance:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->Native_construct(JLcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;)Z

    :cond_0
    return-void
.end method

.method private static native Native_construct(JLcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;)Z
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_init()J
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;
    .locals 2

    const-class v0, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->mInstance:Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;-><init>()V

    sput-object v1, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->mInstance:Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->mInstance:Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public init()V
    .locals 0

    return-void
.end method

.method public insertLog(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertLog s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenAnalyticsUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->mListener:Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil$AnalyticsListener;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil$AnalyticsListener;->onInsertLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public insertLog(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertLog s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenAnalyticsUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->mListener:Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil$AnalyticsListener;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil$AnalyticsListener;->onInsertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public insertLog(III)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertLog s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", v : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenAnalyticsUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->mListener:Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil$AnalyticsListener;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil$AnalyticsListener;->onInsertLog(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public insertLog(IILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertLog s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", d:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenAnalyticsUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->mListener:Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil$AnalyticsListener;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil$AnalyticsListener;->onInsertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public insertLog(IILjava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertLog s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", d:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", v : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenAnalyticsUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->mListener:Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil$AnalyticsListener;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil$AnalyticsListener;->onInsertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public insertStatusLog(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertStatusLog state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", v:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenAnalyticsUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->mListener:Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil$AnalyticsListener;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil$AnalyticsListener;->onInsertStatusLog(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public insertStatusLog(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertStatusLog state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", d:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenAnalyticsUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->mListener:Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil$AnalyticsListener;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil$AnalyticsListener;->onInsertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil$AnalyticsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil;->mListener:Lcom/samsung/android/sdk/pen/util/SpenAnalyticsUtil$AnalyticsListener;

    return-void
.end method
