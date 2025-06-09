.class public Lcom/zhihu/matisse/internal/loader/AlbumLoader;
.super Landroidx/loader/content/CursorLoader;
.source "AlbumLoader.java"


# static fields
.field private static final BUCKET_ORDER_BY:Ljava/lang/String; = "datetaken DESC"

.field private static final COLUMNS:[Ljava/lang/String;

.field private static final COLUMN_BUCKET_DISPLAY_NAME:Ljava/lang/String; = "bucket_display_name"

.field private static final COLUMN_BUCKET_ID:Ljava/lang/String; = "bucket_id"

.field public static final COLUMN_COUNT:Ljava/lang/String; = "count"

.field public static final COLUMN_URI:Ljava/lang/String; = "uri"

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final PROJECTION_29:[Ljava/lang/String;

.field private static final QUERY_URI:Landroid/net/Uri;

.field private static final SELECTION:Ljava/lang/String; = "(media_type=? OR media_type=?) AND _size>0) GROUP BY (bucket_id"

.field private static final SELECTION_29:Ljava/lang/String; = "(media_type=? OR media_type=?) AND _size>0"

.field private static final SELECTION_ARGS:[Ljava/lang/String;

.field private static final SELECTION_FOR_SINGLE_MEDIA_GIF_TYPE:Ljava/lang/String; = "media_type=? AND _size>0 AND mime_type=?) GROUP BY (bucket_id"

.field private static final SELECTION_FOR_SINGLE_MEDIA_GIF_TYPE_29:Ljava/lang/String; = "media_type=? AND _size>0 AND mime_type=?"

.field private static final SELECTION_FOR_SINGLE_MEDIA_TYPE:Ljava/lang/String; = "media_type=? AND _size>0) GROUP BY (bucket_id"

.field private static final SELECTION_FOR_SINGLE_MEDIA_TYPE_29:Ljava/lang/String; = "media_type=? AND _size>0"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "external"

    .line 48
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zhihu/matisse/internal/loader/AlbumLoader;->QUERY_URI:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v2, "bucket_id"

    const-string v3, "bucket_display_name"

    const-string v4, "mime_type"

    const-string v5, "uri"

    const-string v6, "count"

    .line 50
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zhihu/matisse/internal/loader/AlbumLoader;->COLUMNS:[Ljava/lang/String;

    const-string v0, "COUNT(*) AS count"

    const-string v1, "_id"

    const-string v2, "bucket_id"

    const-string v3, "bucket_display_name"

    const-string v4, "mime_type"

    .line 58
    filled-new-array {v1, v2, v3, v4, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zhihu/matisse/internal/loader/AlbumLoader;->PROJECTION:[Ljava/lang/String;

    .line 65
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zhihu/matisse/internal/loader/AlbumLoader;->PROJECTION_29:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x1

    .line 84
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x3

    .line 85
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/zhihu/matisse/internal/loader/AlbumLoader;->SELECTION_ARGS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    .line 122
    sget-object v2, Lcom/zhihu/matisse/internal/loader/AlbumLoader;->QUERY_URI:Landroid/net/Uri;

    .line 125
    invoke-static {}, Lcom/zhihu/matisse/internal/loader/AlbumLoader;->beforeAndroidTen()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zhihu/matisse/internal/loader/AlbumLoader;->PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/zhihu/matisse/internal/loader/AlbumLoader;->PROJECTION_29:[Ljava/lang/String;

    :goto_0
    move-object v3, v0

    const-string v6, "datetaken DESC"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 122
    invoke-direct/range {v0 .. v6}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static beforeAndroidTen()Z
    .locals 2

    .line 291
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static getSelectionArgsForSingleMediaGifType(I)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 115
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    const-string v1, "image/gif"

    aput-object v1, v0, p0

    return-object v0
.end method

.method private static getSelectionArgsForSingleMediaType(I)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 99
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method

.method private static getUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 3

    const-string v0, "_id"

    .line 264
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string v2, "mime_type"

    .line 266
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 265
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 269
    invoke-static {p0}, Lcom/zhihu/matisse/MimeType;->isImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    sget-object p0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 271
    :cond_0
    invoke-static {p0}, Lcom/zhihu/matisse/MimeType;->isVideo(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 272
    sget-object p0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    const-string p0, "external"

    .line 275
    invoke-static {p0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 278
    :goto_0
    invoke-static {p0, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Landroid/content/Context;)Landroidx/loader/content/CursorLoader;
    .locals 4

    .line 135
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->onlyShowGif()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 136
    invoke-static {}, Lcom/zhihu/matisse/internal/loader/AlbumLoader;->beforeAndroidTen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "media_type=? AND _size>0 AND mime_type=?) GROUP BY (bucket_id"

    goto :goto_0

    :cond_0
    const-string v0, "media_type=? AND _size>0 AND mime_type=?"

    .line 138
    :goto_0
    invoke-static {v1}, Lcom/zhihu/matisse/internal/loader/AlbumLoader;->getSelectionArgsForSingleMediaGifType(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 140
    :cond_1
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->onlyShowImages()Z

    move-result v0

    const-string v2, "media_type=? AND _size>0) GROUP BY (bucket_id"

    const-string v3, "media_type=? AND _size>0"

    if-eqz v0, :cond_3

    .line 141
    invoke-static {}, Lcom/zhihu/matisse/internal/loader/AlbumLoader;->beforeAndroidTen()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    move-object v0, v3

    .line 143
    :goto_1
    invoke-static {v1}, Lcom/zhihu/matisse/internal/loader/AlbumLoader;->getSelectionArgsForSingleMediaType(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 145
    :cond_3
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->onlyShowVideos()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 146
    invoke-static {}, Lcom/zhihu/matisse/internal/loader/AlbumLoader;->beforeAndroidTen()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v2

    goto :goto_2

    :cond_4
    move-object v0, v3

    :goto_2
    const/4 v1, 0x3

    .line 148
    invoke-static {v1}, Lcom/zhihu/matisse/internal/loader/AlbumLoader;->getSelectionArgsForSingleMediaType(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 151
    :cond_5
    invoke-static {}, Lcom/zhihu/matisse/internal/loader/AlbumLoader;->beforeAndroidTen()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "(media_type=? OR media_type=?) AND _size>0) GROUP BY (bucket_id"

    goto :goto_3

    :cond_6
    const-string v0, "(media_type=? OR media_type=?) AND _size>0"

    .line 152
    :goto_3
    sget-object v1, Lcom/zhihu/matisse/internal/loader/AlbumLoader;->SELECTION_ARGS:[Ljava/lang/String;

    .line 154
    :goto_4
    new-instance v2, Lcom/zhihu/matisse/internal/loader/AlbumLoader;

    invoke-direct {v2, p0, v0, v1}, Lcom/zhihu/matisse/internal/loader/AlbumLoader;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 26

    .line 159
    invoke-super/range {p0 .. p0}, Landroidx/loader/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    .line 160
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/zhihu/matisse/internal/loader/AlbumLoader;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/zhihu/matisse/internal/loader/AlbumLoader;->beforeAndroidTen()Z

    move-result v3

    const-string v4, "mime_type"

    const-string v5, "bucket_display_name"

    const-string v6, "_id"

    const-string v7, "All"

    const-string v8, "bucket_id"

    const/4 v12, 0x6

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/16 v16, 0x0

    if-eqz v3, :cond_3

    .line 165
    new-instance v3, Landroid/database/MatrixCursor;

    invoke-direct {v3, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move/from16 v2, v16

    if-eqz v0, :cond_1

    .line 167
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 169
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 168
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 171
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 170
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 173
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 172
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 175
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 174
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 176
    invoke-static {v0}, Lcom/zhihu/matisse/internal/loader/AlbumLoader;->getUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v22

    const-string v10, "count"

    .line 177
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    new-array v11, v12, [Ljava/lang/String;

    .line 180
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v11, v16

    .line 181
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v11, v14

    aput-object v15, v11, v13

    const/4 v15, 0x3

    aput-object v9, v11, v15

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v15, 0x4

    aput-object v9, v11, v15

    .line 182
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v15, 0x5

    aput-object v9, v11, v15

    .line 179
    invoke-virtual {v3, v11}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/2addr v2, v10

    goto :goto_0

    .line 185
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 186
    invoke-static {v0}, Lcom/zhihu/matisse/internal/loader/AlbumLoader;->getUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-array v4, v12, [Ljava/lang/String;

    .line 190
    sget-object v5, Lcom/zhihu/matisse/internal/entity/Album;->ALBUM_ID_ALL:Ljava/lang/String;

    aput-object v5, v4, v16

    sget-object v5, Lcom/zhihu/matisse/internal/entity/Album;->ALBUM_ID_ALL:Ljava/lang/String;

    aput-object v5, v4, v14

    aput-object v7, v4, v13

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput-object v6, v4, v5

    if-nez v0, :cond_2

    const/4 v0, 0x4

    const/4 v15, 0x0

    goto :goto_2

    .line 192
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    const/4 v0, 0x4

    :goto_2
    aput-object v15, v4, v0

    .line 193
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v4, v2

    .line 190
    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 195
    new-instance v0, Landroid/database/MergeCursor;

    new-array v2, v13, [Landroid/database/Cursor;

    aput-object v1, v2, v16

    aput-object v3, v2, v14

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v0

    .line 201
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_5

    .line 203
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 204
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 206
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    const-wide/16 v18, 0x1

    if-nez v3, :cond_4

    .line 208
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_4

    .line 210
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    add-long v20, v20, v18

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 212
    :goto_4
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 216
    :cond_5
    new-instance v3, Landroid/database/MatrixCursor;

    sget-object v9, Lcom/zhihu/matisse/internal/loader/AlbumLoader;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v3, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_8

    .line 218
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 219
    invoke-static {v0}, Lcom/zhihu/matisse/internal/loader/AlbumLoader;->getUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v9

    .line 221
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    move/from16 v11, v16

    .line 224
    :goto_5
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 226
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    goto :goto_6

    .line 231
    :cond_6
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 230
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 233
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 232
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 235
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 234
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 236
    invoke-static {v0}, Lcom/zhihu/matisse/internal/loader/AlbumLoader;->getUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v23

    .line 237
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    new-array v14, v12, [Ljava/lang/String;

    .line 240
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v14, v16

    .line 241
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    aput-object v20, v14, v21

    const/16 v20, 0x2

    aput-object v15, v14, v20

    const/4 v15, 0x3

    aput-object v13, v14, v15

    .line 244
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    aput-object v13, v14, v15

    .line 245
    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x5

    aput-object v13, v14, v15

    .line 239
    invoke-virtual {v3, v14}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 246
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    int-to-long v13, v11

    add-long v13, v13, v24

    long-to-int v11, v13

    .line 249
    :goto_6
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-nez v13, :cond_7

    move-object v6, v9

    goto :goto_7

    :cond_7
    const/4 v13, 0x2

    const/4 v14, 0x1

    goto :goto_5

    :cond_8
    move/from16 v11, v16

    const/4 v6, 0x0

    :goto_7
    new-array v0, v12, [Ljava/lang/String;

    .line 253
    sget-object v2, Lcom/zhihu/matisse/internal/entity/Album;->ALBUM_ID_ALL:Ljava/lang/String;

    aput-object v2, v0, v16

    sget-object v2, Lcom/zhihu/matisse/internal/entity/Album;->ALBUM_ID_ALL:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const/4 v2, 0x2

    aput-object v7, v0, v2

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput-object v5, v0, v4

    if-nez v6, :cond_9

    move-object v15, v5

    goto :goto_8

    .line 256
    :cond_9
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    :goto_8
    const/4 v4, 0x4

    aput-object v15, v0, v4

    .line 257
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v0, v5

    .line 253
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 259
    new-instance v0, Landroid/database/MergeCursor;

    new-array v2, v2, [Landroid/database/Cursor;

    aput-object v1, v2, v16

    const/4 v1, 0x1

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/loader/AlbumLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onContentChanged()V
    .locals 0

    return-void
.end method
