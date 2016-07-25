.class public Lcom/example/simpleencryption/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    invoke-static {p0, p1}, Lcom/example/simpleencryption/MainActivity;->bytesToAliSmsCode(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/example/simpleencryption/MainActivity;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/example/simpleencryption/MainActivity;->showDialog()V

    return-void
.end method

.method public static aliCodeToBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5
    .param p0, "codeTable"    # Ljava/lang/String;
    .param p1, "strCmd"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    new-array v1, v4, [B

    .line 153
    .local v1, "cmdBuffer":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 158
    return-object v1

    .line 154
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 155
    .local v0, "c":C
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 156
    .local v3, "v":I
    int-to-byte v4, v3

    aput-byte v4, v1, v2

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static bytesToAliSmsCode(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3
    .param p0, "table"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 146
    :cond_0
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private showDialog()V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a0012

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 76
    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 77
    const v1, 0x7f0a0013

    .line 78
    new-instance v2, Lcom/example/simpleencryption/MainActivity$2;

    invoke-direct {v2, p0}, Lcom/example/simpleencryption/MainActivity$2;-><init>(Lcom/example/simpleencryption/MainActivity;)V

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 84
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 85
    return-void
.end method


# virtual methods
.method protected getPwdFromPic()Ljava/lang/String;
    .locals 10

    .prologue
    .line 116
    const/4 v3, 0x0

    .line 117
    .local v3, "is":Ljava/io/InputStream;
    const-string v5, ""

    .line 119
    .local v5, "value":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/example/simpleencryption/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "logo.png"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 120
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 121
    .local v4, "lenght":I
    new-array v0, v4, [B

    .line 122
    .local v0, "b":[B
    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v4}, Ljava/io/InputStream;->read([BII)I

    .line 125
    const/16 v7, 0x12

    new-array v1, v7, [B

    .line 126
    .local v1, "data":[B
    const v7, 0x16481

    const/4 v8, 0x0

    const/16 v9, 0x12

    invoke-static {v0, v7, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    new-instance v6, Ljava/lang/String;

    const-string v7, "utf-8"

    invoke-direct {v6, v1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .end local v5    # "value":Ljava/lang/String;
    .local v6, "value":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 134
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v5, v6

    .line 139
    .end local v0    # "b":[B
    .end local v1    # "data":[B
    .end local v4    # "lenght":I
    .end local v6    # "value":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 129
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    if-eqz v3, :cond_0

    .line 134
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 135
    :catch_1
    move-exception v7

    goto :goto_0

    .line 131
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 132
    if-eqz v3, :cond_1

    .line 134
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 138
    :cond_1
    :goto_1
    throw v7

    .line 135
    .end local v5    # "value":Ljava/lang/String;
    .restart local v0    # "b":[B
    .restart local v1    # "data":[B
    .restart local v4    # "lenght":I
    .restart local v6    # "value":Ljava/lang/String;
    :catch_2
    move-exception v7

    move-object v5, v6

    .end local v6    # "value":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "b":[B
    .end local v1    # "data":[B
    .end local v4    # "lenght":I
    :catch_3
    move-exception v8

    goto :goto_1

    .end local v5    # "value":Ljava/lang/String;
    .restart local v0    # "b":[B
    .restart local v1    # "data":[B
    .restart local v4    # "lenght":I
    .restart local v6    # "value":Ljava/lang/String;
    :cond_2
    move-object v5, v6

    .end local v6    # "value":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method protected getTableFromPic()Ljava/lang/String;
    .locals 10

    .prologue
    .line 88
    const/4 v3, 0x0

    .line 89
    .local v3, "is":Ljava/io/InputStream;
    const-string v5, ""

    .line 91
    .local v5, "value":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/example/simpleencryption/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "logo.png"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 92
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 93
    .local v4, "lenght":I
    new-array v0, v4, [B

    .line 94
    .local v0, "b":[B
    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v4}, Ljava/io/InputStream;->read([BII)I

    .line 97
    const/16 v7, 0x300

    new-array v1, v7, [B

    .line 98
    .local v1, "data":[B
    const v7, 0x15d81

    const/4 v8, 0x0

    const/16 v9, 0x300

    invoke-static {v0, v7, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    new-instance v6, Ljava/lang/String;

    const-string v7, "utf-8"

    invoke-direct {v6, v1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .end local v5    # "value":Ljava/lang/String;
    .local v6, "value":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 106
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v5, v6

    .line 112
    .end local v0    # "b":[B
    .end local v1    # "data":[B
    .end local v4    # "lenght":I
    .end local v6    # "value":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 101
    :catch_0
    move-exception v2

    .line 102
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    if-eqz v3, :cond_0

    .line 106
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 107
    :catch_1
    move-exception v7

    goto :goto_0

    .line 103
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 104
    if-eqz v3, :cond_1

    .line 106
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 110
    :cond_1
    :goto_1
    throw v7

    .line 107
    .end local v5    # "value":Ljava/lang/String;
    .restart local v0    # "b":[B
    .restart local v1    # "data":[B
    .restart local v4    # "lenght":I
    .restart local v6    # "value":Ljava/lang/String;
    :catch_2
    move-exception v7

    move-object v5, v6

    .end local v6    # "value":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "b":[B
    .end local v1    # "data":[B
    .end local v4    # "lenght":I
    :catch_3
    move-exception v8

    goto :goto_1

    .end local v5    # "value":Ljava/lang/String;
    .restart local v0    # "b":[B
    .restart local v1    # "data":[B
    .restart local v4    # "lenght":I
    .restart local v6    # "value":Ljava/lang/String;
    :cond_2
    move-object v5, v6

    .end local v6    # "value":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/example/simpleencryption/MainActivity;->requestWindowFeature(I)Z

    .line 25
    const v2, 0x7f030018

    invoke-virtual {p0, v2}, Lcom/example/simpleencryption/MainActivity;->setContentView(I)V

    .line 27
    const v2, 0x7f05003d

    invoke-virtual {p0, v2}, Lcom/example/simpleencryption/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 28
    .local v1, "edit":Landroid/widget/EditText;
    const v2, 0x7f05003e

    invoke-virtual {p0, v2}, Lcom/example/simpleencryption/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 29
    .local v0, "button":Landroid/widget/Button;
    new-instance v2, Lcom/example/simpleencryption/MainActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/example/simpleencryption/MainActivity$1;-><init>(Lcom/example/simpleencryption/MainActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method
