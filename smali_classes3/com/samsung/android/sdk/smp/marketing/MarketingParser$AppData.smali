.class public Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smp/marketing/MarketingParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppData"
.end annotation


# instance fields
.field public final mid:Ljava/lang/String;

.field public final msgType:Ljava/lang/String;

.field public final userdata:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;->mid:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;->msgType:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;->userdata:Ljava/lang/String;

    return-void
.end method
