.class public final Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$SingletonHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    invoke-direct {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$SingletonHolder;->INSTANCE:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;
    .locals 1

    sget-object v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$SingletonHolder;->INSTANCE:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    return-object v0
.end method
